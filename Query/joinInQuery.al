query 50119 "Vendors with purchased"
{
    QueryType = Normal;


    elements
    {
        dataitem(Vend; Vendor)
        {
            column(No_; "No.")
            {

            }
            column(VendorName; Name)
            {

            }
            column(Balance__LCY_; "Balance (LCY)")
            {

            }
            // dataitem(Purchase_Header; "Purchase Header")
            // {
            //     DataItemLink = Purchase_Header."No." = Vend.No_ ;
            //     SqlJoinType = InnerJoin ; 
            //     column(Status;Status)
            //     {

            //     }
            // }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}