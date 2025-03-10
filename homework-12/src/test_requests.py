import requests
import json

BASE_URL = "http://127.0.0.1:5000/students"
numer = 1


def log_to_file(response, action):
    global numer
    with open("results.txt", mode="a", encoding="utf-8") as file:
        file.write(f"--- {action} --- {numer}\n")
        file.write(f"Status Code: {response.status_code}\n")
        file.write(f"Response: {json.dumps(response.json(), indent=4)}\n\n")
        numer += 1


def test_api():
    print("GET")
    response = requests.get(BASE_URL)
    log_to_file(response, "GET")
    print(response.json())


    print("POST")
    students = [
        {"first_name": "John", "last_name": "Doe", "age": 20},
        {"first_name": "Jane", "last_name": "Smith", "age": 22},
        {"first_name": "Alice", "last_name": "Johnson", "age": 19},
    ]
    for student in students:
        response = requests.post(BASE_URL, json=student)
        log_to_file(response, "POST")
        print(response.json())


    print("GET")
    response = requests.get(BASE_URL)
    log_to_file(response, "GET")
    print(response.json())


    print("PATCH")
    student_id = 2
    response = requests.patch(f"{BASE_URL}/{student_id}", json={"age": 25})
    log_to_file(response, "PATCH")
    print(response.json())


    print("GET")
    response = requests.get(f"{BASE_URL}/{student_id}")
    log_to_file(response, "GET")
    print(response.json())


    print("PUT")
    student_id = 3
    response = requests.put(
        f"{BASE_URL}/{student_id}",
        json={"first_name": "Alice", "last_name": "Brown", "age": 20},
    )
    log_to_file(response, "PUT")
    print(response.json())


    print("GET")
    student_id = 3
    response = requests.get(f"{BASE_URL}/{student_id}")
    log_to_file(response, "GET")
    print(response.json())


    print("GET")
    response = requests.get(f"{BASE_URL}")
    log_to_file(response, "GET")
    print(response.json())


    print("DELETE")
    student_id = 1
    response = requests.delete(f"{BASE_URL}/{student_id}")
    log_to_file(response, "DELETE")
    print(response.json())


    print("GET")
    response = requests.get(BASE_URL)
    log_to_file(response, "GET")
    print(response.json())


if __name__ == "__main__":
    with open("results.txt", mode="w", encoding="utf-8") as file:
        file.write("API Test Results\n\n")
    test_api()
