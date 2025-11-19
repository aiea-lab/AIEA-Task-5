import openai

def generate_prolog(kb_text, question):
    prompt = open("prompt_template.txt").read()
    user_input = f"Knowledge Base:\n{kb_text}\n\nQuestion:\n{question}\n"

    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[
            {"role": "system", "content": prompt},
            {"role": "user", "content": user_input}
        ],
        temperature=0
    )
    return response["choices"][0]["message"]["content"]
