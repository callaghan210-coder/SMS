page 60121 Unit
{
    Caption = 'Unit';
    PageType = Card;
    SourceTable = Units;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
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
