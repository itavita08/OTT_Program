# 역 명으로 지하철역 조회

## Creating a new pet

## 지하철역 조회

<mark style="color:green;">`POST`</mark> `/users`

\<Description of the endpoint>

**Headers**

| Name          | Value              |
| ------------- | ------------------ |
| Content-Type  | `application/json` |
| Authorization | `Bearer <token>`   |

**Body**

| Name  | Type   | Description      |
| ----- | ------ | ---------------- |
| `n`   | string | Name of the user |
| `age` | number | Age of the user  |

**Response**

{% tabs %}
{% tab title="200" %}
```json
{
  "id": 1,
  "name": "John",
  "age": 30
}
```
{% endtab %}

{% tab title="400" %}
```json
{
  "error": "Invalid request"
}
```
{% endtab %}
{% endtabs %}



## Updating a pet

{% openapi src="https://petstore3.swagger.io/api/v3/openapi.json" path="/pet" method="put" %}
[https://petstore3.swagger.io/api/v3/openapi.json](https://petstore3.swagger.io/api/v3/openapi.json)
{% endopenapi %}

{% hint style="info" %}
**Good to know:** These API methods were auto-generated from an example OpenAPI file. You'll see that it's not editable – that's because the contents are synced to a URL! Any time the linked file changes, the documentation will change too.
{% endhint %}
