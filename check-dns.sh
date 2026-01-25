#!/bin/bash
# Quick DNS check script

echo "🔍 Checking Namecheap DNS directly..."
dig @dns1.registrar-servers.com westleyresource.com +short

echo ""
echo "🌍 Checking your local DNS..."
dig westleyresource.com +short

echo ""
echo "Expected: 151.101.1.195 and 151.101.65.195"
