
void mergeSort(List<int> nums) {
  if (nums.length <= 1) {
    return;
  }

  int mid = nums.length ~/ 2;
  List<int> left = nums.sublist(0, mid);
  List<int> right = nums.sublist(mid);

  mergeSort(left);
  mergeSort(right);

  merge(nums, left, right);
}

void merge(List<int> nums, List<int> left, List<int> right) {
  int i = 0, j = 0, k = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      nums[k++] = left[i++];
    } else {
      nums[k++] = right[j++];
    }
  }

  while (i < left.length) {
    nums[k++] = left[i++];
  }

  while (j < right.length) {
    nums[k++] = right[j++];
  }
}

dividing(List<int> nums) {
  if (nums.length <= 1) {
    return;
  }
  int mid = nums.length ~/ 2;
  List<int> left = nums.sublist(0, mid);
  List<int> right = nums.sublist(mid);

  dividing(left);
  dividing(right);
  merging(nums, left, right);
}

merging(List<int> nums, List<int> left, List<int> right) {
  int i = 0, j = 0, k = 0;
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      nums[k++] = left[i++];
    } else {
      nums[k++] = right[j++];
    }
  }

  while (i < left.length) {
    nums[k++] = left[i++];
  }

  while (j < right.length) {
    nums[k++] = right[j++];
  }
}