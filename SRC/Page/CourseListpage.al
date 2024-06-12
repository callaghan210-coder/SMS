page 60114 "Course List"
{
    PageType = List;
    SourceTable = "Course";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Rec."Code")
                {
                }

                field("Name"; Rec."Name")
                {
                }

                field("Duration (Years)"; Rec."Duration (Years)")
                {
                }
            }
        }
    }
}
