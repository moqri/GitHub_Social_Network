import github3
from github3 import login
import os
os.chdir("C:/1")
g = login('moqri', 'iust8275')
users=g.search_users("followers:<=16", sort="followers")
print users
#user= g.user('defunkt')
#print user.email
#e=g.all_users(10)
#i=0
for userit in users:
    try:
        user=str(userit.user)
        email=str(g.user(user).email)
        followers=str(g.user(user).followers_count)
        if ("@" in email):    
            print followers,user,email        
            with open("follower.csv", "a") as myfile: 
                myfile.write(followers+','+user+','+email+'\n')
    except:
        print "oops"
        
    
