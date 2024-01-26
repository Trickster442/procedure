table 50115 "Setup Page"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(2; COD; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";

        }
    }

    keys
    {
        key(Key1; COD)
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