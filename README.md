# SQL Style Guide

## What and Why?
After many years working with SQL I've never seen a good style guide of how to write good looking SQL that people enjoy maintaining.
This is my atempt at plotting down as much as possible of how to write maintainable python code.

This is a generic style that should work for most SQL-type databases.
For some, like SQL Server where you can do "alias = source" instead of "source as alias" some things and be turned around.

Nothing in this repo is anything other than my personal opinions.

## Zen of Python inspired
The first part of the Zen of Python states that:
```
Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
```
This is highly applicable to SQL code as well

## General guidelines

* Uppercase operators are not beautiful and is hard to read, use lower case.
* comma at start of column is easier to read and not miss.
* 4 space indentation is easier to read, never use tab.
* alias tables with short but relevant names, not t1, t2, t3 but cust for customer, o for order, ol for orderline.
* do NOT use full table names for alias, ever, unless the table name is max 4 letters long.
* do not use "[table] as [alias]" for table alias, it's ugly, "[table] [alias]" is enough.
* if your codebase can handle it, never put complex SQL inside other code, have it in a .sql file which gives most IDEs the ability to help you write the code.

