
def find_item_by_name_in_collection(name, collection)
  answer=nil
  count=0
  while count<collection.length do
    if collection[count][:item].eql?(name)
      answer=collection[count]
    end
    count+=1
  end
  answer
end

def consolidate_cart(cart)
  answer=[]
  items=[]
  count=0
  while count<cart.length do
    items<<cart[count][:item]
    count+=1
  end
  count=0
  item_count={}
  items.each {|item| item_count[item]+=1}
  while count<items.uniq.length do
    answer<<find_item_by_name_in_collection(items.uniq[count],cart)
    answer[count][:count]=item_count[:items.uniq[count]]
    count+=1
  end
  answer
end
