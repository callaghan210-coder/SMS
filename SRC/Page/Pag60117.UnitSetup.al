page 60117 "Unit Setup"
{
    ApplicationArea = All;
    Caption = 'Unit Setup';
    PageType = List;
    SourceTable = "Unit Setup";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Unit Code"; Rec."Unit Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Code field.', Comment = '%';
                }
                field("Unit Title"; Rec."Unit Title")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Title field.', Comment = '%';
                }
            }
        }
    }
}
