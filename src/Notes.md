```
var izb = $$('#contentx > div > div > table:nth-child(3) > tbody > tr:nth-child(n+3)')

copy(izb.map(a => {
    var name = a.querySelector('td:nth-child(2) > a').textContent;
    var teacher = a.querySelector('td:nth-child(4)').textContent;

    return `('${name}', '${teacher}')`
}).join(",\n"))
```
