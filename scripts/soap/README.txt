To issue a SOAP Request from the command line:

1.  Open a DOS prompt and navigate to this directory (scripts/soap)
2.  Type soap.bat <1> <2>   (replacing <1> with the name of the soap request file [.srq] and <2> with your password).  For example:

soap.bat "..\..\studio-project\SOAP Requests\insertOrUpdateOrders\insertOrUpdateOrders.srq" password

3.  The debug level can be changed by appending the debug level to the command line.  For example:

soap.bat "..\..\studio-project\SOAP Requests\insertOrUpdateOrders\insertOrUpdateOrders.srq" password DEBUG

4.  The output of the SOAP request will be printed on standard output.  If there were any errors, you should see them in this output.
