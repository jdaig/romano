def num_to_arr(n)
  arr=n.to_s.split(//)
end

def condition(arr)
  j = arr[0].to_i
if j < 4
j.times(romanl['1']) 
elsif j>5 && j<9
'V'+(j-5).times(roman_uni['1'])
else romanl[arr[0]]
end
end

def roman(str)
n = str.length
arr=[]
arr = num_to_arr(str.to_i)
case n.to_s
  when '1' 
   romanl={'1'=> 'I', '4'=> 'IV', '5'=> 'V', '9'=> 'IX'}
   condition(arr)
  when '2' 
    romanl={'1'=> 'X', '4'=>'XL', '5'=>'L', '9'=>'XC'}
    condition(arr)
  when '3' 
    romanl={'1'=> 'C', '4'=>'XD', '5'=>'D', '9'=>'CM'}
    condition(arr)
  when '4' 
    roman_mil={'1000'=>'M'}
    condition(arr)
  else nil
  end
end


def num(n)
m = n.to_s.length
arr=[]
arr_2=[]
arr_3=[]
arr= num_to_arr(n).reverse.map!{|x| x.to_i}
for i in 0..m-1
  j = arr[i] * 10**i
  arr_2.push(j)
end
arr_2.each{|x| arr_3.push(roman(x.to_s)) }
return arr_3.reverse*""
end

p num(123)
