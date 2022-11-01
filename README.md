Exploring different things you an do with Delphi/Pascal. Can get a general idea of what I was going for...  

First commit - More GUI-approach to setting up connection string + interacting with db    
Second commit - more code-based/variable approach to setting up a connection    
To do:  
- before fetching data from a page/scraping, turn procedure of insert/updating entries from first commit to second
- work on splitting project into 'front-end', 'data module' and 'business logic' to avoid confusion and misplacing procedures.  
- error handling/catching failed statements and matching to a specific ShowMessage() prompt or further user input.
- parsing a search term as a query string for amazon search results, adding new db entries with date of preice obtained etc. > getting actual data
- more secure/robust checking of variables and their data types before enabling a query > something along the lines of prepare/? statements?
- find a library similar to pathlib in Python in delphi that handles cross-platform file paths as objects if necessary? [came across PChar vs unicode strings]