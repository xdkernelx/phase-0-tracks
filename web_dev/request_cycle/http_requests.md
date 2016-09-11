#HTTP Requests
##Release 0, 9.1

DISCLAIMER: This information below is copied and pasted from numerous sources.
Citation is mentioned in-line. 

##Types of HTTTP Requests

###1XXX Informational
This class of status code indicates a provisional response, consisting only of the Status-Line and optional headers, and is terminated by an empty line. Since HTTP/1.0 did not define any 1xx status codes, servers must not[note 1] send a 1xx response to an HTTP/1.0 client except under experimental conditions.[4] (Wikipedia)

###2XXX Success
This class of status codes indicates the action requested by the client was received, understood, accepted, and processed successfully.[2] (Wikipedia)

###3XXX Redirection
This class of status code indicates the client must take additional action to complete the request. Many of these status codes are used in URL redirection.[2] (Wikipedia)

###4XXX Client Error
The 4xx class of status code is intended for situations in which the client seems to have erred. Except when responding to a HEAD request, the server should include an entity containing an explanation of the error situation, and whether it is a temporary or permanent condition. These status codes are applicable to any request method. User agents should display any included entity to the user.[31] (Wikipedia)

###5XXX Server Error
The server failed to fulfill an apparently valid request.[56] (Wikipedia)

##Difference between GET and POST
Source: http://stackoverflow.com/questions/3477333/what-is-the-difference-between-post-and-get

"So essentially GET is used to retrieve remote data, and POST is used to insert/update remote data."

##Definition of a Browser Cookie
A small text file (up to 4KB) created by a Web site that is stored in the user's computer either temporarily for that session only or permanently on the hard disk (persistent cookie). Cookies provide a way for the Web site to recognize you and keep track of your preferences. (PCMag)