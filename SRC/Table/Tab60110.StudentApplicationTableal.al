table 60110 "StudentApplicationTable.al"
{
    Caption = 'StudentApplicationTable.al';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "NO."; Code[20])
        {
            Caption = 'NO.';
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
        }
        field(3; "Middle Name"; Text[50])
        {
            Caption = 'Middle Name';
        }
        field(4; Surname; Text[50])
        {
            Caption = 'Surname';
        }
        field(5; "Full Name"; Text[150])
        {
            Caption = 'Full Name';
            Editable = false;
        }
        field(6; "Gender"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Gender';
            OptionMembers = Male,Female,Other;
        }
        field(7; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            Editable = false;
        }
        field(8; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "NO.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        StudentManagementSetup: Record "StudentManagementSetupTable.al";
    begin
        "No." := NoSeriesMgt.GetNextNo('STUDENT_APP_NO', WorkDate, true);
        "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Surname";
        "Age" := DateToAge("Date of Birth");

        StudentManagementSetup.Get();
        if ("Age" < StudentManagementSetup."Minimum Age") or
           ("Age" > StudentManagementSetup."Maximum Age") then
            Error('Age does not meet the requirements.');
    end;


}
