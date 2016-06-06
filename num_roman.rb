def num_to_arr(n)
arr=n.to_s.split(//)
end

def num(n)
  roman_num={'1'=> 'I', '2'=> 'II', '3'=> 'III', '4'=> 'IV', '5'=> 'V', '6'=> 'VI', '7'=> 'VII', '8'=> 'VIII', '9'=> 'IX', '10'=> 'X',
   '20'=> 'XX', '30'=>'XXX', '40'=>'XL', '50'=>'L', '60'=>'LX', '70'=> 'LXX', '80'=> 'LXXX', '90'=> 'XC', '100'=>'C', 
   '200'=> 'CC', '300'=>'CCC', '400'=> 'CD', '500'=> 'D','600'=> 'DC', '700'=> 'DCC', '800'=> 'DCCC', '1000'=>'M'}
m = n.to_s.length
arr=[]
arr_2=[]
arr_3=[]
arr= num_to_arr(n).reverse.map!{|x| x.to_i}
for i in 0..m-1
  j = arr[i] * 10**i
  arr_2.push(j)
end
arr_2.each{|x| arr_3.push(roman_num[x.to_s]) }
return arr_3.reverse*""
end

p num(123)
