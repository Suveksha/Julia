

function gss(str)
    if(length(str)==0)
        emptyBag=[""]
        return emptyBag
    end

    ch=str[1]
    sub=str[2:end]

    arr=gss(sub)

    ans=[]

    for s in arr
        push!(ans,s)
    end

    for s in arr
        push!(ans,ch*s)
    end

    return ans
end

print("Enter a string")
str=readline()

println(gss(str))

