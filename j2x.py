import sys
from json2xml import json2xml
from json2xml.utils import readfromstring, readfromjson

# For now I want to take the string as a cl arg
# but in the future this will be embedded in a bash script 
# that will export a shell variable that will in turn be 
# used by the following python script
string = sys.argv[1]
data = readfromstring(string)
print(json2xml.Json2xml(data, wrapper="all", pretty=True).to_xml())
