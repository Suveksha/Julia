print("Enter the size of the array\n")
n=parse(Int32,readline())

arr=zeros(Int32,n)

for i=1:n
    arr[i]=parse(Int32,readline())
end

max=-1
for i=1:n
    if(arr[i]>max)
        global max=arr[i]
    end
end

for i=max:-1:1
    for j=1:n
        if(arr[j]>=i)
            print("*\t")
        else
            print("\t")
        end
    end
    println()
end
