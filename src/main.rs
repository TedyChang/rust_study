fn main() {
    let s1 = gives_ownership();
    let s2 = String::from("hello");

    let s3 = takes_and_gives_back(s2);

    println!("{} {} {}", s1, s2, s3)
}

fn gives_ownership() -> String {
    let some_string = String::from("hello2");
    some_string
}

fn takes_and_gives_back(a_sring: String) -> String {
    a_sring
}