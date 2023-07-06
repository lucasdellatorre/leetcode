# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(node_list_one, node_list_two)
    merge_list = ListNode.new(0, nil)
    head = merge_list
    while node_list_one != nil && node_list_two != nil do 
        if node_list_one.val < node_list_two.val 
            merge_list.next = node_list_one
            node_list_one = node_list_one.next
        else
            merge_list.next = node_list_two
            node_list_two = node_list_two.next
        end
        merge_list = merge_list.next
    end
    merge_list.next = if node_list_one == nil
                        node_list_two
                      else
                        node_list_one
                      end  
    return head.next || []
end
