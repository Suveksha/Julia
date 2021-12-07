print("Enter the number of rows\n")
n=parse(Int32,readline())

print("Enter the number of columns\n")
m=parse(Int32,readline())

arr=zeros(Int32,n,m)

for i=1:n
    for j=1:m
        arr[i,j]=parse(Int64,readline())
    end
end

cnt=0
tne=n*m
minr=1
minc=1
maxr=n
maxc=m

while cnt<tne
    i=minr
    while i<=maxr && cnt<tne
        println(arr[i,minc])
        global cnt+=1
        i+=1
    end
    global minc+=1
    
    j=minc
    while j<=maxc && cnt<tne
        println(arr[maxr,j])
        global cnt+=1
        j+=1
    end
    global maxr-=1

    i=maxr
    while i>=minr && cnt<tne
        println(arr[i,maxc])
        global cnt+=1
        i-=1
    end
    global maxc-=1

    j=maxc
    while j>=minc && cnt<tne
        println(arr[minr,j])
        global cnt+=1
        j-=1
    end
    global minr+=1
end



            
    