table 60118 Departments
{
    Caption = 'Departments';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Dep Code"; Code[20])
        {
            Caption = 'Dep Code';
        }
        field(2; "Dep Title"; Text[50])
        {
            Caption = 'Dep Title';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Dep Code")
        {
            Clustered = true;
        }
    }
}
