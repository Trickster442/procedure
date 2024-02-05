query 50120 "Lots Avail. by Bin"
{
    QueryType = Normal;

    
    elements
    {
        dataitem(Item_Ledger_Entry;"Item Ledger Entry")
        {
            column(Item_No_;"Item No.")
            {
                
            }
            filter(Lot_No_;"Lot No.")
            {
                
            }
            dataitem(Warehouse_Entry;"Warehouse Entry")
            {
                DataItemLink = "Location Code" = Item_Ledger_Entry."Location Code",
                "Item No." = Item_Ledger_Entry."Item No.", 
                "Lot No." = Item_Ledger_Entry."Lot No.";
                column(Entry_No_;"Entry No.")
                {
                    
                }
                column(Location_Code;"Location Code"){}
                column(Zone_Code;"Zone Code"){}
                column(Bin_Code;"Bin Code"){

                }
                column(Sum_Quantity;Quantity){
                    Method = Sum ; 
                }
                dataitem(Bin;Bin)
                {
                    DataItemLink = Code = Warehouse_Entry."Bin Code";
                    dataitem(Bin_Type;"Bin Type")
                    {
                        DataItemLink = Code = Bin."Bin Type Code";
                        DataItemTableFilter  = Pick = const (True);   //only picking table that are set true for picking

                    }
                }

            }
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}