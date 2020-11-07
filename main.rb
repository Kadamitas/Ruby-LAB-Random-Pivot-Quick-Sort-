
def part(arr,low,high)
    x = low
    for y in low..high do
        if arr[y] <= arr[low]
            arr[x],arr[y] = arr[y],arr[x]
            x = x +1
        end
    end
    arr[low], arr[x-1] = arr[x-1],arr[low]
    low = x-1
    return low
end

def partrand(arr,low,high)
    r = rand(low..high)
    arr[low],arr[r] = arr[r], arr[low]
    return part(arr,low,high)
end

def quicksort(arr,low,high)
    if(low<high)
        pivot = partrand(arr,low,high)
        quicksort(arr, low, pivot)
        quicksort(arr,pivot+1,high)
    end
end


array = Array[32,21,39,7,31,12,2,14,9]
quicksort(array,0,8)
puts array