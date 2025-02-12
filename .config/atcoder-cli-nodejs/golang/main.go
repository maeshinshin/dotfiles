package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

type pair struct {
	x int
	y int
}

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	sc.Split(bufio.ScanWords)

	var v []int
	for i := 0; i < n; i++ {
		v = append(v, scanInt())
	}
}

// slice
func sum(a []int) (s int) {
	for _, v := range a {
		s += v
	}
	return
}

// algorithm
func lowerBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] >= x
	})
	return idx
}

func upperBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] > x
	})
	return idx
}

func nextPermutation(x sort.Interface) bool {
	n := x.Len()
	if n <= 1 {
		return false
	}

	i := n - 2
	for i >= 0 && !x.Less(i, i+1) {
		i--
	}
	if i < 0 {
		reverse(x, 0, n-1)
		return false
	}

	j := n - 1
	for !x.Less(i, j) {
		j--
	}

	x.Swap(i, j)
	reverse(x, i+1, n-1)
	return true
}

func reverse(x sort.Interface, start, end int) {
	for start < end {
		x.Swap(start, end)
		start++
		end--
	}
}

// heap queue
type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *IntHeap) Push(x interface{}) {
	*h = append(*h, x.(int))
}

func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

// UnionFind
type DSU struct {
	parentOrSize []int
}

func NewDSU(n int) *DSU {
	d := &DSU{parentOrSize: make([]int, n)}
	for i := range d.parentOrSize {
		d.parentOrSize[i] = -1
	}
	return d
}

func (d *DSU) Merge(a, b int) int {
	x, y := d.Leader(a), d.Leader(b)
	if x == y {
		return x
	}
	if -d.parentOrSize[x] < -d.parentOrSize[y] {
		x, y = y, x
	}
	d.parentOrSize[x] += d.parentOrSize[y]
	d.parentOrSize[y] = x
	return x
}

func (d *DSU) Same(a, b int) bool {
	return d.Leader(a) == d.Leader(b)
}

func (d *DSU) Leader(a int) int {
	if d.parentOrSize[a] < 0 {
		return a
	}
	d.parentOrSize[a] = d.Leader(d.parentOrSize[a])
	return d.parentOrSize[a]
}

func (d *DSU) Size(a int) int {
	return -d.parentOrSize[d.Leader(a)]
}

func (d *DSU) Groups() [][]int {
	leaderBuf := make([]int, len(d.parentOrSize))
	groupSize := make([]int, len(d.parentOrSize))
	for i := range d.parentOrSize {
		leaderBuf[i] = d.Leader(i)
		groupSize[leaderBuf[i]]++
	}

	result := make([][]int, len(d.parentOrSize))
	for i := range result {
		result[i] = make([]int, 0, groupSize[i])
	}

	for i := range d.parentOrSize {
		result[leaderBuf[i]] = append(result[leaderBuf[i]], i)
	}

	filteredResult := [][]int{}
	for _, g := range result {
		if len(g) > 0 {
			filteredResult = append(filteredResult, g)
		}
	}
	return filteredResult
}

// scan
func scanInt() (i int) {
	var err error
	sc.Scan()
	i, err = strconv.Atoi(sc.Text())
	if err != nil {
		log.Fatal("Failed to input", err)
	}
	return
}

func scanString() (s string) {
	sc.Scan()
	s = sc.Text()
	return
}
