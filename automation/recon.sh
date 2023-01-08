#!/bin/bash

# Set target domain
domain=$1

# Run subfinder to find subdomains
subfinder -d $domain > subdomains.txt

# Run dirsearch on found subdomains
cat subdomains.txt | while read sub; do
    dirsearch -u $sub -w /path/to/wordlist.txt -e *
done

# Run MassDNS to resolve subdomains to IP addresses
cat subdomains.txt | massdns -r /path/to/resolvers.txt -t A -o S -w massdns.txt

# Run sublist3r to find more subdomains
sublist3r -d $domain -o sublist3r.txt

# Merge the results of all subdomain-finding tools into a single file
cat subdomains.txt sublist3r.txt | sort | uniq > all_subdomains.txt

# Run FFuF to find hidden forms
ffuf -u $domain/FUZZ -w /path/to/wordlist.txt -mc all

# Run WayBackURLs to find URLs from the Wayback Machine
waybackurls $domain > waybackurls.txt

# Run nmap to scan for open ports and services
nmap -iL all_subdomains.txt -p- -T4 -oA nmap_scan

# Run vulners to find vulnerabilities
cat nmap_scan.xml | vulners -format nmap > vulners.txt

# Run GetJS to find and download JavaScript files
getjs -u $domain -o js

# Run getallurls to find all URLs on the domain
getallurls -u $domain -o all_urls.txt

# Run XSSHUNTER to find potential XSS vulnerabilities
xsshunter -u $domain

# Run SQLMap to find potential SQL injection vulnerabilities
sqlmap -u $domain --dbs

# Run XXEinjector to find potential XXE vulnerabilities
xxeinjector -u $domain

# Run SSRFDetector to find potential SSRF vulnerabilities
ssrfdetector -u $domain

# Run GitTOOLS to find sensitive information in git repositories
gittools -u $domain

# Run Gitallsecrets to find secrets in git repositories
gitallsecrets -u $domain

# Run CORStest to test for CORS vulnerabilities
corstest -u $domain

# Run EyeWitness to take screenshots of all discovered URLs
eyewitness -f all_urls.txt -d eyewitness_screenshots
