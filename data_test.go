package example

import (
	"crypto/tls"
	"testing"
)

func TestData(t *testing.T) {
	_ = tls.VersionTLS10

	data1, data2 := GetData()
	if string(data1) != "hello" {
		t.Fatalf("\nexpected: %s\ngot: %s", "hello", string(data1))
	}

	if string(data2) != "world" {
		t.Fatalf("\nexpected: %s\ngot: %s", "world", string(data2))
	}
}
