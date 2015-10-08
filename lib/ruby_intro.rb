# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  i=0
  sum=0
  while i<arr.length do
	sum=sum+arr[i]
	i=i+1
  end
  puts sum
end



def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==1
	puts arr[0]
  else
   if arr[0]>=arr[1]
	max1=arr[0]
	max2=arr[1]
   elsif
	max1=arr[1]
	max2=arr[0]
   end
	
   i=2
   while i<arr.length do
	if arr[i]>max1
		max2=max1
		max1=arr[i]
	elsif (arr[i]<max1)&&(arr[i]>max2)
		max2=arr[i]
	end
        i+=1
   end
   puts max1+max2
  end
end


def sum_to_n? arr, n
  # YOUR CODE HERE
 s=0
 if arr.length==0
	if n==0 
		s=1
	end
 else
	sum=arr[0]+arr[1]
	for i in 0..(arr.length-1)
		for j in (i+1)..(arr.length-1)
			if arr[i]+arr[j]==n
				s=1
			j+=1
			end	
		end
		i+=1
	end
 end

 if s==1 
	puts 'TRUE'
	return true
 end
end



# Part 2

def hello(name)
  # YOUR CODE HERE
  puts "Hello,#{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  i=0
  j=0
  a="aeiouAEIOU"
  while i<10 do
	if s[0,1]==a[i,1]
		j=1
	end
	i+=1
  end
  if j==0
	puts true
  else 
	puts false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s[s.length-1,1]=="1")||(s[s.length-2,1]=="1")#低两位中只要有一位有1，就不会是4的倍数
	puts false
  elsif s[0,s.length-3].include?"1"#只要除过低两位之后的高位中只要有一位有1，就是4的倍数
	puts true
  else 
	puts false
end
end

# Part 3
class BookInStock 
# YOUR CODE HERE
	def initialize(bookisbn,bookprice)#构造函数
		@isbn=bookisbn
		@price=bookprice
		@price2=format("%0.2f",@price)#控制输出位数为两位小数
		if (@isbn=='')||(@price<=0)
			raise ArgumentError
		end
	end

	def price_as_string()
		#puts "#@isbn"
		puts "$#@price2"
	end
end
