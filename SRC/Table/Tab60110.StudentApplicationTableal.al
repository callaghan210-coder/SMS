table 60110 "Student Application"
{
    Caption = 'Student Application';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student No."; Code[20])
        {
            Caption = 'No.';
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
        field(10; "CreatedOn"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "CreatedBy"; Code[20])
        {
            DataClassification = SystemMetadata;
        }
        field(12; "Approval Status"; Enum "Document Approval")
        {
            DataClassification = ToBeClassified;
        }
        field(13; Email; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Phone No."; integer)
        {
            DataClassification = ToBeClassified;
        }
        field(15; Course; code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Course Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Course Title"; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "National ID"; integer)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "KRA PIN"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Birth Certificate No."; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(21; Address; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(22; Country; text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(23; County; text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(24; Village; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Nearest Pos"; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(26; "Nearest School"; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(27; Level; Enum "Education Level")
        {
            DataClassification = ToBeClassified;
        }
        field(28; "NKName"; text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Next Of Kin Name';
        }
        field(29; "NKAddress"; text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Next Of Kin Address';
        }
        field(30; "NKEmail"; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Next Of Kin Email';
        }
        field(31; "NKPhone No."; integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Next Of Kin Phone No.';

        }
        field(32; "NKRelationship"; text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Next Of Kin Relationship';
        }


        //fields Created By ( User setup,Full Name of the User)
        //fields Created On (Date and Time)
        //field "Approval Status" Enum "Document Approval"
    }
    keys
    {
        key(PK; "Student No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if Rec."Student No." = '' then begin
            StdMgtSetup.Get();
            StdMgtSetup.TestField("Student No.");
            NoSeriesMgt.InitSeries(StdMgtSetup."Student No.", XRec."No. Series", 0D, "Student No.", "No. Series");
        end;

        if ("Age" < StdMgtSetup."Minimum Age") or
       ("Age" > StdMgtSetup."Maximum Age") then
            Error('Age does not meet the requirements.');
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    var
        CurrentUser: Text[50];
    begin
        // Get the current user
        CurrentUser := UserId();

        // Check if the current user is the creator
        if (CreatedBy <> CurrentUser) then
            Error('You do not have permission to delete this record as you are not the creator.');

        // Check if the approval status is "Open"
        if ("Approval Status" <> "Approval Status"::Open) then
            Error('You can only delete records with an approval status of "Open".');
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
