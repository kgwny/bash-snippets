# variable scope

# global variable
var="global"

print_bound_var() {
    echo "print_bound_var: ${var}"
}

print_var() {
    # local variable
    local var="local"
    echo "print_var: ${var}"
    print_bound_var
}

print_var
print_bound_var
