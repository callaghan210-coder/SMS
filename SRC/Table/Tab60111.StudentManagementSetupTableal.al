table 60111 "StudentManagementSetupTable.al"
{
    Caption = 'StudentManagementSetupTable.al';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Minimum age"; Integer)
        {
            Caption = 'Minimum age';
        }
        field(2; "Minimum age"; Integer)
        {
            Caption = 'Minimum age';
        }
    }
    keys
    {
        key(PK; "Minimum age")
        {
            Clustered = true;
        }
    }
}
