Get resident set size in MB  
`print(f"Resources used: {resource.getrusage(resource.RUSAGE_SELF).ru_maxrss / 1024}")`
