handsonimport
=============

Data inputs to R from spreadsheets made breeze with [Handsontable](http://handsontable.com/) + [Shiny](http://shiny.rstudio.com/)


Features
--------
- [ ] Import Excel spreadsheet into the Handsontable grid within the app
- [ ] Select grid regions you wish to import to R
- [ ] Map the data inside the selection onto _ids_, _fields_ (a.k.a. variables/metrics) and _timestamp_ that these data represent in your data model/database.
- [ ] Define _ids_, _fields_ and _timestamps_ using text input or selection widgets (e.g. TypeAheads from [shinyBS](http://spark.rstudio.com/johnharrison/shinyBS-Demo))
- [ ] Connect the app to your database to have the _ids_, _fields_ and _timestamps_ context available.


Advanced
--------

- [ ] Save the import job if this is your weekly/monthly/whatnot chore
- [ ] Prepopulate _ids_, _fields_ and _timestamps_ with existing headings detected within your grid data and fuzzy matched against your database.
- [ ] Validation step: for time series data, compare & validate the values against last value from your database for the given _id_ and _field_


Example
-------

You store various fund metrics that you collect and monitor on a monthly basis, for example exposures by region. Data comes each month buried in spreadsheets with varying format. Different funds use different names for the same metric (for example `Exposure` labeled as `% NAV`, or `Weight`) and different layout. Task is to standardize, label and import the data in your database. 

If you write R import scripts using  `gdata::read.xls`, `xlsx::read.xlsx` `XLConnect::readWorksheet`, you don't know the addresses of the import regions and you still need to custom code an interface to your database of _ids_ (here representing funds, like `iShares Core MSCI Total International Stock ETF Fund`), _fields_ (here `Exposure/Europe` field) and _timestamps_ (here historical exposure records). 

The above requires R skills. Deploying `hansonimport` app with its graphical user interface (GUI) and spreadsheet-like feel enables your organization to empower non-R users while still enjoying the benefits of database.





