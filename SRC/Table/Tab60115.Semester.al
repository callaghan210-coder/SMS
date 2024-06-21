table 60115 "Semester"
{
    Caption = 'Semester ';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Semester Code"; Code[20])
        {
            Caption = 'Semester Code';
        }
        field(2; "Semester Description"; Text[100])
        {
            Caption = 'Semester Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Semester Code")
        {
            Clustered = true;
        }
    }
}
