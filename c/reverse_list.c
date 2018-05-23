struct list_node* reverse_list(struct list_node* head)
{
	struct list_node* current = head;
	struct list_node* next = NULL, prev = NULL;
	struct list_node* reversed_head = NULL;

	while (current) {
		next = current->next;
		if (next == NULL)
			reversed_head = current;

		current->next = prev;
		prev = current;
		current = next;
	}

	return reversed_head;
}
