struct list_node* merge_sorted_list(struct list_node* headA, struct list_node* headB)
{
	struct list_node* merge_head, merge_tail;
	struct list_node* curA = headA, curB = headB;

	if (!curA)
		return curB;
	if (!curB)
		return curA;

	if (curA->data >= curB->data) {
		merge_head = merge_tail = curA;
		curA = curA->next;
	} else {
		merge_head = merge_tail = curB;
		curB = curB->next;
	}

	while (curA && curB) {
		if (curA->data >= curB->data) {
			merge_tail->next = curA;
			merge_tail = curA;
			curA = curA->next;
		} else {
			merge_tail->next = curB;
			merge_tail = curB;
			curB = curB->next;
		}
	}

	if (curA)
		merge_tail->next = curA;
	if (curB)
		merge_tail->next = curB;

	return merge_head;
}
