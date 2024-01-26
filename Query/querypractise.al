query 50159 queryTable_practise
{
    QueryType = Normal;
    TopNumberOfRows = 5;
    // OrderBy = ascending(Pricing);

    Caption = 'Query Table Practise';


    elements
    {
        dataitem(Extracting_Data; Item)
        {
            filter(Production_BOM_No_; "Production BOM No.")
            {

            }
            column(Number; "No.")
            {

            }
            column(Name; Description)
            {

            }
            column(Pricing; "Unit Price")
            {
                Method = Max;
            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}