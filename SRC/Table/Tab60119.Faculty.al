table 60119 Faculty
{
    Caption = 'Faculty';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Fac Code"; Code[20])
        {
            Caption = 'Fac Code';
        }
        field(2; "Fac Title"; Text[50])
        {
            Caption = 'Fac Title';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Fac Code")
        {
            Clustered = true;
        }
    }
}
