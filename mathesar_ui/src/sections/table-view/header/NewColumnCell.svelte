<script lang="ts">
  import { createEventDispatcher } from 'svelte';
  import {
    faPlus,
  } from '@fortawesome/free-solid-svg-icons';
  import {
    Button,
    Dropdown,
    TextInput,
    Icon,
  } from '@mathesar-components';
  import {
    DEFAULT_ROW_RIGHT_PADDING,
  } from '@mathesar/stores/table-data';
  import type {
    Display,
    TableColumn,
  } from '@mathesar/stores/table-data/types.d';

  const dispatch = createEventDispatcher();
  export let columnData: TableColumn[];
  export let display: Display;

  $: ({ rowWidth } = display);

  let isDropdownOpen = false;
  let columnName = '';

  $: isDuplicateColumn = columnData?.some(
    (column) => column.name.toLowerCase() === columnName?.toLowerCase(),
  );

  function addColumn() {
    const newColumn = {
      name: columnName,
      type: 'varchar',
      nullable: true,
      primary_key: false,
    };
    dispatch('addColumn', newColumn);
    isDropdownOpen = false;
    columnName = '';
  }
</script>

<div class="cell new-column" style="
  width:{DEFAULT_ROW_RIGHT_PADDING}px;
  left:{$rowWidth - DEFAULT_ROW_RIGHT_PADDING}px">
  <Dropdown closeOnInnerClick={false}
            contentClass="content"
            bind:isOpen={isDropdownOpen}
            triggerAppearance="plain"
            showArrow={false}>
    <svelte:fragment slot="trigger">
      <span class="name">
        <Icon class="opt" data={faPlus} size="0.8em"/>
      </span>
    </svelte:fragment>
    <svelte:fragment slot="content">
      <div class="new-column-dropdown" style="width:250px">
        <div class="grid">
          <TextInput bind:value={columnName}>
            <svelte:fragment slot="prepend">Name:</svelte:fragment>
          </TextInput>
          <Button appearance="primary" disabled={!columnName?.trim() || isDuplicateColumn} on:click={() => addColumn()}>
            Add
          </Button>
        </div>
        {#if isDuplicateColumn}
          <p class="messages">
            <strong>Warning!</strong> The column name must be unique.
          </p>
        {/if}
      </div>
    </svelte:fragment>
  </Dropdown>
</div>

<style global lang="scss">
  @import "NewColumnCell.scss";
</style>
