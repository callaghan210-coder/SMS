table 60110 "Student Application"
{
    Caption = 'Student Application';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'NO.';
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Surname";
            end;
        }
        field(3; "Middle Name"; Text[50])
        {
            Caption = 'Middle Name';
            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Surname";
            end;
        }
        field(4; Surname; Text[50])
        {
            Caption = 'Surname';
            trigger OnValidate()
            begin
                "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Surname";
            end;
        }
        field(5; "Full Name"; Text[150])
        {
            Caption = 'Full Name';
            Editable = false;
        }
        field(6; "Gender"; Enum "Employee Gender")
        {
            DataClassification = ToBeClassified;
            Caption = 'Gender';
        }
        field(7; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            trigger OnValidate()
            begin
                if Rec."Date of Birth" > Today then
                    Error('Please Date of Birth Should be less or Equal to %1', Today);
                if Rec."Date of Birth" <> 0D then
                    Age := GetAge(Today);
            end;
        }
        field(8; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(9; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        //fields Created By ( User setup,Full Name of the User)
        //fields Created On (Date and Time)
        //field "Approval Status" Enum "Document Approval"
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if Rec."No." = '' then begin
            StdMgtSetup.Get();
            StdMgtSetup.TestField("Student No.");
            NoSeriesMgt.InitSeries(StdMgtSetup."Student No.", XRec."No. Series", 0D, "No.", "No. Series");
        end;

        if ("Age" < StdMgtSetup."Minimum Age") or
       ("Age" > StdMgtSetup."Maximum Age") then
            Error('Age does not meet the requirements.');
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
        //Permission to delete if the user is the one creating
        //Check The Approval Status to be Open
    end;

    var
        StdMgtSetup: Record "Student Management Setup";
        NoSeriesMgt: codeunit NoSeriesManagement;
        StdMgt: Codeunit "Student Management";
    //User Setup Var
    //User 
    procedure GetAge(Date: Date) AgeInt: Integer
    var
        Age: Decimal;
        AgeString: Text;
    begin
        if ("Date of Birth" <> 0D) and (Date <> 0D) then begin
            StdMgt.CalculateAge("Date of Birth", Date, AgeString, Age);
            Evaluate(AgeInt, Format(Age));
        end;
    end;

}
