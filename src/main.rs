fn main() {
    let s1 = String::from("hello");
    let len = calculate_length(&s1);

    println!("The length of '{}' is {}.", s1, len);

    let s1 = String::from("hello test");
    let s2 = s1 + ", test";
    println!("s2 : {}, s1 borrow..",s2)
}

fn calculate_length(s: &String) -> usize {
    let length = s.len();
    length
}