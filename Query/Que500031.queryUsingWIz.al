query 50031 queryUsingWIz
{
    Caption = 'queryUsingWIz';
    QueryType = Normal;
    QueryCategory = 'Country/Region';

    elements
    {
        dataitem(CountryRegion; "Country/Region")
        {
            column(AddressFormat; "Address Format")
            {
            }
            column(CountyName; "County Name")
            {
            }
            column(ISOCode; "ISO Code")
            {
            }
            column(Name; Name)
            {
            }
            column(Rank; Rank)
            {
            }
            column(VATScheme; "VAT Scheme")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
