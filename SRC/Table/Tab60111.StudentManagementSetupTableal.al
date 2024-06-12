table 60111 "Student Management Setup"
{
    Caption = 'Student Management Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Minimum age"; Integer)
        {
            Caption = 'Minimum age';
        }
        field(3; "Maximum age"; Integer)
        {
            Caption = 'Minimum age';
        }
        field(4; "Student No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(5; "No of Days in a Year"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
