# Recon
<p align="center" width="100%">
    <img width="70%"src="https://i.imgur.com/yvAMzbm.jpg"> 
</p>

## recon.sh
Bash script to automate the recon process using subfinder, dirserch, MassDNS, sublist3r, FFuF, WayBackURLs, nmap, vulners, GetJS, getallurls, XSSHUNTER, SQLMap, XXEinjector, SSRFDetector, GitTOOLS, Gitallsecrets, CORStest, EyeWintesss and parameth.

This script will perform recon on the specified domain by finding subdomains, resolving them to IP addresses, finding hidden forms, URLs from the Wayback Machine, open ports and services, and vulnerabilities. It will also find and download JavaScript files, find all URLs on the domain, and test for various types of vulnerabilities. Finally, it will take screenshots of all discovered URLs.

Here is a brief description of each tool used in the script:

- `subfinder`: a tool for discovering subdomains of a target domain

- `dirsearch`: a tool for performing directory brute-force attacks on a web server

- `MassDNS`: a tool for resolving subdomains to IP addresses using multiple DNS resolvers in parallel

- `sublist3r`: a tool for finding subdomains of a target domain

- `FFuF`: a tool for finding hidden forms on a web page

- `WayBackURLs`: a tool that uses the Wayback Machine API to find URLs that have been archived by the Wayback Machine

- `nmap`: a tool for network exploration and security auditing

- `vulners`: a tool for finding vulnerabilities using the Vulners API

- `GetJS`: a tool for finding and downloading JavaScript files from a web page

- `getallurls`: a tool for finding all URLs on a given domain

- `XSSHUNTER`: a tool for finding potential cross-site scripting (XSS) vulnerabilities

- `SQLMap`: a tool for automating the detection and exploitation of SQL injection vulnerabilities

- `XXEinjector`: a tool for finding potential XML external entity (XXE) injection vulnerabilities

- `SSRFDetector`: a tool for finding potential server-side request forgery (SSRF) vulnerabilities

- `GitTOOLS`: a tool for finding sensitive information in git repositories

- `Gitallsecrets`: a tool for finding secrets in git repositories

- `CORStest`: a tool for testing for cross-origin resource sharing (CORS) vulnerabilities

- `EyeWitness`: a tool for taking screenshots of web pages
