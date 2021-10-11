<script>
  import { onMount } from 'svelte'
  import Product from './Product.svelte'

  let products = []

  onMount(async () => {
    let response = await fetch('/api/products', { headers: { 'Content-Type': 'application/json' } })
    products = await response.json()
  })
</script>

<h1>Products</h1>

{#each products as product}
  <Product {product} />
{/each}
