table 60114 "Units setup table"
{
    Caption = 'Units setup table';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Unit Code"; Code[20])
        {
            Caption = 'Unit Code';
        }
        field(2; "Unit Title"; Text[100])
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
