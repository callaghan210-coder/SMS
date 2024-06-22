table 60117 Units
{
    Caption = 'Units';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unit Code"; Code[20])
        {
            Caption = 'Unit Code';
        }
        field(2; "Unit Title"; Text[50])
        {
            Caption = 'Unit Title';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Unit Code")
        {
            Clustered = true;
        }
    }
}
