<?php
class languageTranslation extends AbstractDB
{
	// Definitions
	private
		$result;
	// Constructor
	public function __construct()
	{
			parent::__construct();
			$this->result = NULL;
			return true;
	}
	public function numofrows()
	function insertRecord($fields,$values)