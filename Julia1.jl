using Printf
using Statistics

# Strings
s1="Hello world I am Suveksha"

println(length(s1))
println(s1[1])      #Gets the first character
println(s1[end])    #Gets the last indexed value
println(s1[1:4])    #Substring    

s2=string("Suveksha","Chettri")     #Concatenation of strings
println(s2)

println("Yuno" * "Gasai")       #Concatenation

i1=188
i2=324
println("$i1 + $i2 = $(i1+i2)")     

str="""I am a very long string
who stretches from one line to the other
and thewords in me just goes on snd on and on"""

println(str);

println("Angella">"Kenzo") #String comparision
println(findfirst("uvek","Suveksha")) #findfirst- Finds the first occurence of the string in the given string
println(occursin("key","monkey"))       #finds whether the substring is present in the string or not


#Conditionals
age=15
if age>=18 && age<=60
    println("You can drive")
elseif age<18
    println("Learn to Drive");
else
    println("You should hire a driver");     
end

@printf("true || false = %s\n",true||false);    #print format

print(true||false ? "I am true\n" : "I am false\n") #Ternary operator


#Loops

#while
i=1
while i<20
    if (i%2)==0
        println(i)
        global i += 1 #if we want to access a global value inside a code block use global keyword
    end
    global i += 1

    if i>=10
        break
    end
end

#for 
for i=1:5       #for loop with Range
    print(i," ")
end

println()

for i in [1,3,5,7]      #for loop with arrays
    print(i," ")
end

println()

for i=1:5, j=2:2:10     #Nested for loop
    println("$i * $j = $(i*j)")
end


#Arrays
arr1=zeros(Int32,2,2)      #2D array filled with zeroes
arr2=Array{Int32}(undef,5)
arr3=Float64[]
arr4=[1,2,3,4,5,6,7,8,9]

println(arr4[1])    #Access array values
println(arr4[end])  #last value of an array
println(5 in arr4)  #checks whether a value is present in an array or not
println(findfirst(isequal(2),arr4)); #Finds the first occurence of value 2 in arr4

f(a)= (a>=2) ? true : false #generic function
println(findall(f,arr4))    #findall-gets all the array elements which pass the condition
println(count(f,arr4))      #counts the number of elements which pass the given condition

println(size(arr1))        #returns the size of the arr4 (Array dimension)
println(length(arr4))      #returns the length of the array (Number of elements)
println(sum(arr4))      #returns the sum of an array

splice!(arr4, 6:5, [21,181])   #adds elements in a particular index
println(arr4)

splice!(arr4, 6:7)  #remove elements from a particular index
println(arr4)

println(maximum(arr4))  #returns the max value in an array
println(minimum(arr4))  #returns the min value in an array

println(arr4 * 2)   #multiplies the array without using Loops

arr5=[1,3.14,"Hello"]   #we can store different types of data types in an array

arr6=[sin, cos, tan]    #we can store functions in an array
for n in arr6
    println(n(0))   #prints the sin, cos and tan value of 0
end

arr7=[1 2 3; 4 5 6; 7 8 9]  #multidimensional array
println(size(arr7))
# tup = size(arr7)
for i=1:3 
    for j=1:3
        print(arr7[i,j]," ")
    end
    println()
end

# println(length(arr7)/tup[1])
# println(tup[1])

println(arr7[:,2])  #prints the elements of the second column
println(arr7[2,:])   #prints the elements of the second row
println(arr7[1,:3])    #prints the element at first row third column

arr8=collect(1:5)   #creates 1D array using ranges
println(arr8)

arr9=collect(0:2:10)    #creates a 1D array with even numbers
for n in arr9 println(n) end

arr10=[n^2 for n in 1:5]    #creates an array with elements based on a particular math condition
println(arr10)  

push!(arr10,36) #pushes a value in an array
println(arr10)

arr11=[n*m for n in 1:5, m in 1:5] #creates a 2D array based on a particular condition
println(arr11)

arr12=rand(0:9,5,5)
for n=1:5
    for m=1:5
        print(arr12[n,m]," ")
    end
    println()
end

#Tuples

tup1=(1,2,3,4,5)
println(tup1)

println(tup1[1])    #get individual values from a Tuples

for i in tup1   #print tuple values
    print(i," ")
end

println()

tup2=((1,2,3),(4,5,6),(7,8,9))  #2D tuple
println(tup2)

tup3=(sue=("Sue",100), paul=("Paul",23))    #named tuples
println(tup3.paul)

#Dictionaries
d1=Dict("pi"=>3.14, "e"=>2.718)
println(d1["pi"])   #get the value from a dictionary using a key
d1["gold"]=48   #add a new key value pair 

delete!(d1,"pi") #delete a key value pair
println(d1)

println(haskey(d1,"pi")) #checks whether there is a key or not

println(in("pi"=>3.14,d1))  #checks fro the key and its value whether present or not

println(keys(d1))   #displays all the keys in the dictionary
println(values(d1)) #displays all the individual values

for kv in d1    #displays the key value pairs
    println(kv)
 end

for(key,value) in d1    #access each key value seperately
    println(key," : ",value)
end

#Sets (similar to arrays but every value must be unique)

st1=Set(["Jim","Pam","Jim"])
println(st1)

push!(st1, "Michael")   #push new data to the set
println(in("Dwight",st1))   #check whether the given element is present or not

st2=Set(["Stanley","Meredith","Jim"])
println(union(st1,st2))     #combines two Sets

println(intersect(st1,st2))     #returns the common elements between two Sets
println(setdiff(st1,st2))       #returns the values uncommon values between the two Sets

#functions
getSum(x,y)=x+y
x,y=1,2
@printf("%d + %d = %d\n",x,y,getSum(x,y))

function canIVote(age=16)   #function with default parameter value
    if age>18
        println("Can Vote")
    else
        println("Can't Vote")
    end
end
canIVote(23)

v1=5
function changeVI(v1)
    #v1=10   #no change in value without global
    global v1=10 #now the value of v1 will change
end
changeVI(v1)
println(v1)

function getSumMul(args...)     #multiple arguments
    sum=0
    for x in args
        sum+=x
    end
    return sum
end

println(getSumMul(1,2,3,4,5))    #return multiple values 

function retMul(val)
    return (val+1,val+2)
end

ans1,ans2=retMul(4)
println(ans1," ",ans2)

function makeMultiplier(num)
    return function(x) return x * num end
end

mult3=makeMultiplier(3)
println(mult3(6))

#Function Overloading
function getSum3(num1::Number,num2::Number)
    return num1+num2
end

function getSum(num1::String,num2::String)
    return parse(Int32,num1)+parse(Int32,num2)
end

println(getSum3(1,2))
println(getSum("1","2"))

#Anonymous functions
v2=map(x->x*x, [1,2,3])
println(v2)

v3=map((x,y)->x+y,[1,2],[3,4])
println(v3)

v4=reduce(+, 1:100)
println(v4)

sentence="I am a long string"
sArray=split(sentence)
longest=reduce((x,y)-> length(x) > length(y) ? x : y, sArray)
println(longest)

#Math functions

@printf("5 + 4 = %d\n", (5 + 4))
@printf("5 - 4 = %d\n", (5 - 4))
@printf("5 * 4 = %d\n", (5 * 4))
@printf("5 / 4 = %d\n", (5 / 4))
println("5 % 4 = ", (5 % 4))
@printf("5 ^ 4 = %d\n", (5 ^ 4))
 
@printf("round(3.5) = %d\n", round(3.5))
@printf("floor(3.5) = %d\n", floor(3.5))
@printf("ceil(3.5) = %d\n", round(3.5))
@printf("abs(-3.5) = %d\n", abs(-3.5))
@printf("sqrt(100) = %d\n", sqrt(100))
@printf("cbrt(100) = %d\n", cbrt(100))
@printf("hypot(90,90) = %d\n", hypot(90,90))
@printf("exp(2) = %d\n", exp(2))
@printf("log(100) = %d\n", log(100))
@printf("log2(100) = %d\n", log2(100))
@printf("log10(100) = %d\n", log10(100))

arr13=[1,2,3,4]
println(arr13.*2) #Multiplies the elements of an array by 2

#Enum
@enum Color begin
    red=1
    blue=2
    green=3
end

favColor=blue::Color
println(favColor)

#Symbols
:Derek
println(:Derek)
#Commonly used as keys in dictionary
d2=Dict(:pi=>3.12, :e=>12.3)
println(d2[:pi])

#Structs is by default immutable so to make mutable we use mutable keyword
mutable struct Customer
    name::String
    balance::Float32
    id::Int32
end

bob=Customer("Bob",1234.50,121)
println(bob.balance)

#Abstract types
abstract type Animal end

struct Dog<:Animal
    name::String
    bark::String
end

struct Cat<:Animal
    name::String
    meow::String
end

snowy=Dog("Snowy","Ruff")
angella=Cat("Angella","Meoww")

function makeSound(animal::Dog)
    println("$(animal.name) says $(animal.bark)")
end

function makeSound(animal::Cat)
    println("$(animal.name) says $(animal.meow)")
end

makeSound(snowy)
makeSound(angella)

#Exception Handling
print("Enter a number")
num1=chomp(readline())
print("Enter another number")
num2=chomp(readline())

try
    val=(parse(Int32,num1))/(parse(Int32,num2))
    if(val==Inf)
        error("Can't divide by 0")
    else
        println(val)
    end

catch e
    println(e)
end

#File IO 
open("RandomFile.txt","w") do file
    write(file,"Here is some random text\nHello Julia")
end

open("RandomFile.txt") do file
    data=read(file,String)
    println(data)
end

open("RandomFile.txt") do file
    for line in eachline(file)
        println(line)
    end
end

#Macros generate code before a code is run 

macro doMore(n,exp)
    quote
        for i=1:$(esc(n))
            $(esc(exp))
        end
    end
end

@doMore(2, println("Hello"))

macro doWhile(exp)
    @assert exp.head==:while
    esc(quote
    $(exp.args[2])
    $exp
    end)
end

z=0
@doWhile while z<10
    global z+=1
    println(z)
end
