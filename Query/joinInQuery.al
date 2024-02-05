query 50119 "Customer Sales By Quantity"
{
    QueryType = Normal;
    OrderBy = descending(Quantity);
    elements
    {
        dataitem(Customer; Customer)    //extracting data from customer table
        {
            column(custNo_; "No.")
            {

            }
            column(custName; Name)
            {

            }

            dataitem(Sales_Line; "Sales Line")  //table's data that you wish to extract
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";  //linking the common field or field with same type of record
                SqlJoinType = InnerJoin;

                column(Quantity; Quantity)
                {
                    Method = Sum;
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