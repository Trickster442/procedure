table 51890 "Loan Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Loan No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Loan Header Table";

        }
        field(2; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Paid Amt"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Loan No", "Line No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}