# norikra-getting-started

Norikraを試してみる

# クエリ

dump

```
{
    "targets": [
    {
        "name": "dummy",
        "fields": {
            "id": {
                "name": "id",
                "type": "string",
                "optional": false,
                "nullable": false
            },
            "uri": {
                "name": "uri",
                "type": "string",
                "optional": false,
                "nullable": false
            }
        },
        "auto_field": true
    }
    ],
    "queries": [
        {
            "name": "dummy-select",
            "group": null,
            "expression": "select id from dummy.win:time(30 sec)"
        },
        {
            "name": "dummy-count",
            "group": null,
            "expression": "select count(id) from dummy.win:time(30 sec)"
        }
    ]
}
```

