struct list_node* find_k_tail(struct list_node* head, int k_tail_idx)
{
	struct list_node* current = head;
	struct list_node* k_tail = head;
	int idx = 0;

	if (k_tail_idx <= 0)
		return NULL;

	while (current) {
		idx++;
		if (idx >= k_tail_idx) {
			k_tail = k_tail->next;
		}

		current = current->next;
	}

	if (idx < k_tail_idx)
		k_tail = NULL;
	return k_tail;
}
