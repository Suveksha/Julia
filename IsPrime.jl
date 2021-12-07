using Printf

print("Enter a number\n")
num=parse(Int32,readline())

count=0

for i=2:num-1
    if(num%i==0)
        global count+=1
    end
end

if(count==0)
    println("Is Prime")
else
    println("Not Prime")
end


