page 50121 "Lot avail. by Bin"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "Warehouse Entry";
    SourceTableTemporary = true;

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Bin Code"; Rec."Bin Code")
                {
                    ApplicationArea = All;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    trigger OnOpenPage()
    var
        Lotavail: Query "Lots Avail. by Bin";
    begin
        Lotavail.Open;
        while Lotavail.Read do begin
            repeat
                Rec."Item No." := Lotavail.Item_No_;
                rec."Location Code" := Lotavail.Location_Code;
                rec."Bin Code" := Lotavail.Bin_Code;
                rec.Quantity := Lotavail.Sum_Quantity;
            until Lotavail.Item_No_ = '';
        end

    end;
}